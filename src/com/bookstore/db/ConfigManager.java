/**
 * Copyright (C), 2015-2019
 * FileName: ConfigManager
 * Author:   niko
 * Date:     2019/6/15 20:51
 * Description:
 * History:
 * <author>          <time>          <version>
 *          20:51           1.0
 */
package com.bookstore.db;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigManager {
    Properties pr = new Properties();
    InputStream is;
    private static ConfigManager configManager = null;

    private  ConfigManager() {
        is = ConfigManager.class.getClassLoader().getResourceAsStream("com/bookstore/db/db.properties");
        try {
            pr.load(is);
            is.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public synchronized static ConfigManager getInstance() {
        if (configManager == null) {
            configManager = new ConfigManager();
        }
        return configManager;
    }

    public String getValue(String key) {
        return pr.getProperty(key);
    }

}