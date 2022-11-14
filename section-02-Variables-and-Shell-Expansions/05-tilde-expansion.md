# Tilde (~) Expansion
----

Tilde ~ refers to current user's home directory
```bash
echo ~ # /home/ubuntu
```

It returns another user's home directory also.
```bash
echo ~durlabh # /home/durlabh
echo ~root # /root
```
Can be used as a shortcut for the directory we have already visited. \

Bash saves last visited directory in OLDPWD(all caps) shell.
```bash
cd /tmp
echo $PWD # /tmp

cd ~/bash-course
echo $PWD # /home/ubuntu/bash-course

echo $OLDPWD # /tmp

```

We can reference \
  **~+** = $PWD \
  **~-** = $OLDPWD \

we can keep using **~-** to keep moving between current and old directory.
```bash
ubuntu@Ubuntu:~/bash-course$ cd ~-
ubuntu@Ubuntu:/tmp$ cd ~-
ubuntu@Ubuntu:~/bash-course$ cd ~-
ubuntu@Ubuntu:/tmp$ cd ~-
ubuntu@Ubuntu:~/bash-course$ cd ~-
ubuntu@Ubuntu:/tmp$ cd ~-
ubuntu@Ubuntu:~/bash-course$
```