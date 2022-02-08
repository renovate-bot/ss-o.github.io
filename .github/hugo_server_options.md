## Hugo server

  **hugo server**

```
      --appendPort             append port to baseURL (default true)
  -b, --baseURL string         hostname (and path) to the root, e.g. http://spf13.com/
      --bind string            interface to which the server will bind (default "127.0.0.1")
  -D, --buildDrafts            include content marked as draft
  -E, --buildExpired           include expired content
  -F, --buildFuture            include content with publishdate in the future
      --cacheDir string        filesystem path to cache directory. Defaults: $TMPDIR/hugo_cache/
      --cleanDestinationDir    remove files from destination not found in static directories
  -c, --contentDir string      filesystem path to content directory
  -d, --destination string     filesystem path to write files to
      --disableBrowserError    do not show build errors in the browser
      --disableFastRender      enables full re-renders on changes
      --disableKinds strings   disable different kind of pages (home, RSS etc.)
      --disableLiveReload      watch without enabling live browser reload on rebuild
      --enableGitInfo          add Git revision, date and author info to the pages
      --forceSyncStatic        copy all files when static is changed.
      --gc                     enable to run some cleanup tasks (remove unused cache files) after the build
  -h, --help                   help for server
      --i18n-warnings          print missing translations
      --ignoreCache            ignores the cache directory
  -l, --layoutDir string       filesystem path to layout directory
      --liveReloadPort int     port for live reloading (i.e. 443 in HTTPS proxy situations) (default -1)
      --meminterval string     interval to poll memory usage (requires --memstats), valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". (default "100ms")
      --memstats string        log memory usage to this file
      --minify                 minify any supported output format (HTML, XML etc.)
      --navigateToChanged      navigate to changed content file on live browser reload
      --noChmod                don't sync permission mode of files
      --noHTTPCache            prevent HTTP caching
      --noTimes                don't sync modification time of files
      --path-warnings          print warnings on duplicate target paths etc.
  -p, --port int               port on which the server will listen (default 1313)
      --print-mem              print memory usage to screen at intervals
      --renderToDisk           render to Destination path (default is render to memory & serve from there)
      --templateMetrics        display metrics about template executions
      --templateMetricsHints   calculate some improvement hints when combined with --templateMetrics
  -t, --theme strings          themes to use (located in /themes/THEMENAME/)
      --trace file             write trace to file (not useful in general)
  -w, --watch                  watch filesystem for changes and recreate as needed (default true)
```

### Options inherited from parent commands 
      
```
      --config string              config file (default is path/config.yaml|json|toml)
      --configDir string           config dir (default "config")
      --debug                      debug output  
  -e, --environment string         build environment
      --ignoreVendor               ignores any _vendor directory
      --ignoreVendorPaths string   ignores any _vendor for module paths  
```

### Matching the given Glob pattern
     
```
      --log                        enable Logging
      --logFile string             log File path (if set, logging enabled automatically)
      --quiet                      build in quiet mode
  -s, --source string              filesystem path to read files relative from
      --themesDir string           filesystem path to themes directory
  -v, --verbose                    verbose output
      --verboseLog                 verbose logging
```
      