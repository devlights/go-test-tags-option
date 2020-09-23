usage:
	@echo '---------------------------------------------------------------------'
	@echo '以下のタスクが実行できます.'
	@echo '---------------------------------------------------------------------'
	@echo ' - tests -- go test を実行します.'
	@echo '              - 最初は -tags オプション無しで go test を実行します.'
	@echo '              - 次に   -tags オプションありで go test を実行します.'
	@echo '---------------------------------------------------------------------'
	@echo ' REFERENCES '
	@echo '   - https://medium.com/tech-at-wildlife-studios/testing-golang-code-our-approach-at-wildlife-6f41e489ff36'
	@echo '   - https://stackoverflow.com/questions/48882691/force-retesting-or-disable-test-caching'
	@echo '   - https://golang.org/cmd/go/#hdr-Remove_object_files_and_cached_files'
	@echo '---------------------------------------------------------------------'

tests: _go-test-without-tags _go-test-with-tags

_go-test-without-tags:
	go clean -testcache
	go test -v ./...
	@echo '---------------------------------------------------------------------'

_go-test-with-tags:
	go clean -testcache
	go test -v -tags=extratests ./...
	@echo '---------------------------------------------------------------------'
