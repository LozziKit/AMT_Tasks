package io.heig.tasks.api.spec.helpers;

import io.heig.tasks.api.TaskApi;

import java.io.IOException;
import java.util.Properties;

/**
 * Created by Olivier Liechti on 24/06/17.
 */
public class Environment {

    private TaskApi api = new TaskApi();

    public Environment() throws IOException {
        Properties properties = new Properties();
        properties.load(this.getClass().getClassLoader().getResourceAsStream("environment.properties"));
        String url = properties.getProperty("io.heig.tasks.server.url");
        api.getApiClient().setBasePath(url);

    }

    public TaskApi getApi() {
        return api;
    }


}