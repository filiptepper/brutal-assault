.PHONY: release

release:
	bundle exec ruby ics.rb
	mv brutal-assault.ics docs
	git add docs/brutal-assault.ics
	git commit -m "update $$(date '+%Y-%m-%d %H:%M:%S')" -- docs/brutal-assault.ics
	git push
