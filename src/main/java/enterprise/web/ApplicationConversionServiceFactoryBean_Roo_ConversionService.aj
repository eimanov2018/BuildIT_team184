// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package enterprise.web;

import enterprise.domain.Plant;
import enterprise.domain.PlantHireRequest;
import enterprise.domain.PlantHireRequestPlant;
import enterprise.domain.PlantHireRequestPlantPK;
import enterprise.domain.PlantHireRequestSEngineer;
import enterprise.domain.PlantHireRequestSEngineerPK;
import enterprise.domain.SiteEgineer;
import enterprise.web.ApplicationConversionServiceFactoryBean;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Plant, String> ApplicationConversionServiceFactoryBean.getPlantToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<enterprise.domain.Plant, java.lang.String>() {
            public String convert(Plant plant) {
                return new StringBuilder().append(plant.getDescription()).append(' ').append(plant.getName()).append(' ').append(plant.getPrice()).toString();
            }
        };
    }
    
    public Converter<Long, Plant> ApplicationConversionServiceFactoryBean.getIdToPlantConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, enterprise.domain.Plant>() {
            public enterprise.domain.Plant convert(java.lang.Long id) {
                return Plant.findPlant(id);
            }
        };
    }
    
    public Converter<String, Plant> ApplicationConversionServiceFactoryBean.getStringToPlantConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, enterprise.domain.Plant>() {
            public enterprise.domain.Plant convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Plant.class);
            }
        };
    }
    
    public Converter<PlantHireRequest, String> ApplicationConversionServiceFactoryBean.getPlantHireRequestToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<enterprise.domain.PlantHireRequest, java.lang.String>() {
            public String convert(PlantHireRequest plantHireRequest) {
                return new StringBuilder().append(plantHireRequest.getContact()).append(' ').append(plantHireRequest.getCost()).append(' ').append(plantHireRequest.getEndr()).append(' ').append(plantHireRequest.getStartr()).toString();
            }
        };
    }
    
    public Converter<Long, PlantHireRequest> ApplicationConversionServiceFactoryBean.getIdToPlantHireRequestConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, enterprise.domain.PlantHireRequest>() {
            public enterprise.domain.PlantHireRequest convert(java.lang.Long id) {
                return PlantHireRequest.findPlantHireRequest(id);
            }
        };
    }
    
    public Converter<String, PlantHireRequest> ApplicationConversionServiceFactoryBean.getStringToPlantHireRequestConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, enterprise.domain.PlantHireRequest>() {
            public enterprise.domain.PlantHireRequest convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PlantHireRequest.class);
            }
        };
    }
    
    public Converter<PlantHireRequestPlant, String> ApplicationConversionServiceFactoryBean.getPlantHireRequestPlantToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<enterprise.domain.PlantHireRequestPlant, java.lang.String>() {
            public String convert(PlantHireRequestPlant plantHireRequestPlant) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<PlantHireRequestPlantPK, PlantHireRequestPlant> ApplicationConversionServiceFactoryBean.getIdToPlantHireRequestPlantConverter() {
        return new org.springframework.core.convert.converter.Converter<enterprise.domain.PlantHireRequestPlantPK, enterprise.domain.PlantHireRequestPlant>() {
            public enterprise.domain.PlantHireRequestPlant convert(enterprise.domain.PlantHireRequestPlantPK id) {
                return PlantHireRequestPlant.findPlantHireRequestPlant(id);
            }
        };
    }
    
    public Converter<String, PlantHireRequestPlant> ApplicationConversionServiceFactoryBean.getStringToPlantHireRequestPlantConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, enterprise.domain.PlantHireRequestPlant>() {
            public enterprise.domain.PlantHireRequestPlant convert(String id) {
                return getObject().convert(getObject().convert(id, PlantHireRequestPlantPK.class), PlantHireRequestPlant.class);
            }
        };
    }
    
    public Converter<PlantHireRequestSEngineer, String> ApplicationConversionServiceFactoryBean.getPlantHireRequestSEngineerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<enterprise.domain.PlantHireRequestSEngineer, java.lang.String>() {
            public String convert(PlantHireRequestSEngineer plantHireRequestSEngineer) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<PlantHireRequestSEngineerPK, PlantHireRequestSEngineer> ApplicationConversionServiceFactoryBean.getIdToPlantHireRequestSEngineerConverter() {
        return new org.springframework.core.convert.converter.Converter<enterprise.domain.PlantHireRequestSEngineerPK, enterprise.domain.PlantHireRequestSEngineer>() {
            public enterprise.domain.PlantHireRequestSEngineer convert(enterprise.domain.PlantHireRequestSEngineerPK id) {
                return PlantHireRequestSEngineer.findPlantHireRequestSEngineer(id);
            }
        };
    }
    
    public Converter<String, PlantHireRequestSEngineer> ApplicationConversionServiceFactoryBean.getStringToPlantHireRequestSEngineerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, enterprise.domain.PlantHireRequestSEngineer>() {
            public enterprise.domain.PlantHireRequestSEngineer convert(String id) {
                return getObject().convert(getObject().convert(id, PlantHireRequestSEngineerPK.class), PlantHireRequestSEngineer.class);
            }
        };
    }
    
    public Converter<SiteEgineer, String> ApplicationConversionServiceFactoryBean.getSiteEgineerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<enterprise.domain.SiteEgineer, java.lang.String>() {
            public String convert(SiteEgineer siteEgineer) {
                return new StringBuilder().append(siteEgineer.getName()).append(' ').append(siteEgineer.getVatNumber()).toString();
            }
        };
    }
    
    public Converter<Long, SiteEgineer> ApplicationConversionServiceFactoryBean.getIdToSiteEgineerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, enterprise.domain.SiteEgineer>() {
            public enterprise.domain.SiteEgineer convert(java.lang.Long id) {
                return SiteEgineer.findSiteEgineer(id);
            }
        };
    }
    
    public Converter<String, SiteEgineer> ApplicationConversionServiceFactoryBean.getStringToSiteEgineerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, enterprise.domain.SiteEgineer>() {
            public enterprise.domain.SiteEgineer convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), SiteEgineer.class);
            }
        };
    }
    
    public Converter<String, PlantHireRequestSEngineerPK> ApplicationConversionServiceFactoryBean.getJsonToPlantHireRequestSEngineerPKConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, enterprise.domain.PlantHireRequestSEngineerPK>() {
            public PlantHireRequestSEngineerPK convert(String encodedJson) {
                return PlantHireRequestSEngineerPK.fromJsonToPlantHireRequestSEngineerPK(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<PlantHireRequestSEngineerPK, String> ApplicationConversionServiceFactoryBean.getPlantHireRequestSEngineerPKToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<enterprise.domain.PlantHireRequestSEngineerPK, java.lang.String>() {
            public String convert(PlantHireRequestSEngineerPK plantHireRequestSEngineerPK) {
                return Base64.encodeBase64URLSafeString(plantHireRequestSEngineerPK.toJson().getBytes());
            }
        };
    }
    
    public Converter<String, PlantHireRequestPlantPK> ApplicationConversionServiceFactoryBean.getJsonToPlantHireRequestPlantPKConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, enterprise.domain.PlantHireRequestPlantPK>() {
            public PlantHireRequestPlantPK convert(String encodedJson) {
                return PlantHireRequestPlantPK.fromJsonToPlantHireRequestPlantPK(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<PlantHireRequestPlantPK, String> ApplicationConversionServiceFactoryBean.getPlantHireRequestPlantPKToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<enterprise.domain.PlantHireRequestPlantPK, java.lang.String>() {
            public String convert(PlantHireRequestPlantPK plantHireRequestPlantPK) {
                return Base64.encodeBase64URLSafeString(plantHireRequestPlantPK.toJson().getBytes());
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getPlantToStringConverter());
        registry.addConverter(getIdToPlantConverter());
        registry.addConverter(getStringToPlantConverter());
        registry.addConverter(getPlantHireRequestToStringConverter());
        registry.addConverter(getIdToPlantHireRequestConverter());
        registry.addConverter(getStringToPlantHireRequestConverter());
        registry.addConverter(getPlantHireRequestPlantToStringConverter());
        registry.addConverter(getIdToPlantHireRequestPlantConverter());
        registry.addConverter(getStringToPlantHireRequestPlantConverter());
        registry.addConverter(getPlantHireRequestSEngineerToStringConverter());
        registry.addConverter(getIdToPlantHireRequestSEngineerConverter());
        registry.addConverter(getStringToPlantHireRequestSEngineerConverter());
        registry.addConverter(getSiteEgineerToStringConverter());
        registry.addConverter(getIdToSiteEgineerConverter());
        registry.addConverter(getStringToSiteEgineerConverter());
        registry.addConverter(getJsonToPlantHireRequestSEngineerPKConverter());
        registry.addConverter(getPlantHireRequestSEngineerPKToJsonConverter());
        registry.addConverter(getJsonToPlantHireRequestPlantPKConverter());
        registry.addConverter(getPlantHireRequestPlantPKToJsonConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
