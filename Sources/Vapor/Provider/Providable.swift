import HTTP
import Fluent
import Console

public struct Providable {
    /**
        An optional `Server` Type to provide
        to the droplet.
     
        `Server`s are passed as types since
        they are not initialized until the 
        droplet starts.
    */
    var server: ServerProtocol.Type?

    /**
        An optional `Sessions` to provide
        to the droplet.
    */
    var sessions: Sessions?


    /**
        An optional `HashDriver` to provide
        to the droplet.
     */
    var hash: Hash?

    /**
        An optional `ConsoleProtocol` to provide
        to the droplet.
    */
    var console: ConsoleProtocol?

    /**
        An optional `Log` to provide to the droplet.
    */
    var log: Log?

    /**
         An optional `HTTPClient` add-on used to make
         outgoing web request operations.
     */
    var client: ClientProtocol.Type?

    /**
        An optional `Database` that will be used
        by the droplet for all Fluent queries.
    */
    var database: Database?

    init(
        server: ServerProtocol.Type? = nil,
        sessions: Sessions? = nil,
        hash: Hash? = nil,
        console: ConsoleProtocol? = nil,
        log: Log? = nil,
        client: ClientProtocol.Type? = nil,
        database: Database? = nil
    ) {
        self.server = server
        self.sessions = sessions
        self.hash = hash
        self.console = console
        self.log = log
        self.client = client
        self.database = database
    }
}
