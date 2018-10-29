package services;

import javax.ws.rs.*;

@Path("/search")
public class Search {

    @GET
    @Path("/all")
    @Produces("application/json")
    public String searchAll() {
        String ret = "{ \"name\" : \"%s\"}";

        return String.format(ret, "bla");
    }
}
