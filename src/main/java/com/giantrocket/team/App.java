package com.giantrocket.team;

import java.io.File;

import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.ContextHandlerCollection;
import org.eclipse.jetty.server.nio.SelectChannelConnector;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.springframework.core.io.ClassPathResource;
import org.springframework.web.servlet.DispatcherServlet;

import com.typesafe.config.Config;
import com.typesafe.config.ConfigFactory;

public class App {
    private static String CONFIG_FILE_PATH = "conf/env/startup.conf";

    public static void main(String[] args) throws Exception {

        Config root = ConfigFactory.parseFile(getFile());
        Config server = root.getConfig("server");     
        ContextHandlerCollection contexts = getDispatcherServletsContext(server);

        Server s = new Server();
        s.setConnectors(new Connector[] {getConnector(server)});
        s.setHandler(contexts);

        s.start();
    }

    private static Connector getConnector(Config server) {
        Connector connector = new SelectChannelConnector();
        connector.setPort(server.getInt("port"));
        if (server.hasPath("header_size")) {            
            connector.setRequestHeaderSize(server.getInt("header_size"));
        }

        return connector;
    }

    private static File getFile() throws Exception {

        ClassPathResource classPathResource = new ClassPathResource(CONFIG_FILE_PATH);

        File file = classPathResource.getFile();
        if (!file.exists()) {
            classPathResource = new ClassPathResource("startup.conf");
            file = classPathResource.getFile();
            if (!file.exists()) {
                throw new RuntimeException(
                    "startup.conf file not found in classpath (it should be in the root or inside conf/env/) -- I don't know how to start dammit!");
            }
        }

        return file;
    }
    
    private static ContextHandlerCollection getDispatcherServletsContext(Config server) {
        ContextHandlerCollection contexts = new ContextHandlerCollection();

        for (Config c : server.getConfigList("dispatcher_servlets")) {
            DispatcherServlet dispatcherServlet = new DispatcherServlet();
            dispatcherServlet.setContextConfigLocation(c.getString("context_location"));
            dispatcherServlet.setDispatchOptionsRequest(true);

            ServletHolder servletHolder = new ServletHolder(dispatcherServlet);

            for (Object relativePath : c.getAnyRefList("paths")) {
                ServletContextHandler servletHandler = new ServletContextHandler(ServletContextHandler.NO_SESSIONS);
                servletHandler.setContextPath(relativePath.toString());

                servletHandler.addServlet(servletHolder, "/*");
                contexts.addHandler(servletHandler);
            }
        }

        return contexts;
    }
}

