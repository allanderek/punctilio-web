rm -f index.html accreditation.html testimonials.html
git checkout gh-pages &&
git merge master &&
python punctilio.py &&
# TODO: check if index.html has actually changed.
git add index.html accreditation.html testimonials.html &&
git commit -m "Latest build and commit to gh-pages" &&
git push origin gh-pages &&
git checkout master &&
echo "Visit: https://allanderek.github.io/punctilio-web/""