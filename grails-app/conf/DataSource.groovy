dataSource {
    pooled = true
//    driverClassName = "org.hsqldb.jdbcDriver"
//    username = "sa"
//    password = ""
      driverClassName = "org.postgresql.Driver"
	username = "tomcat"
	password = "tomcat00"
    dbCreate = "create" // create, create-drop, update
    url = 'jdbc:postgresql:siscofe'
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
    dialect='org.hibernate.dialect.PostgreSQLDialect'
}
// environment specific settings
environments {
    development {
        dataSource {
        }
    }
    test {
        dataSource {
        }
    }
    production {
        dataSource {
        }
    }
}
