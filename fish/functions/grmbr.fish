function grmbr -d "Delete local branches with upstream gone"
    git fetch -p;
    for branch in (git branch -vv | awk '{print $1,$4}' | grep 'gone]' | awk '{print $1}');
        git branch -D $branch;
    end
end
