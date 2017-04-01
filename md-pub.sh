for i in *.md; do perl /usr/bin/markdown --html4tags $i > ../posts/${i%.*}.html; done
