# 💻Bashrc
> Main Linux shell

- ### git aliases:
    `gs, ga, gc` - (git status, git add, git commit);
- ### ls aliases:
    `ll, la, l` - (ls -alF, ls -A, ls -CF);
- ### displaying current git branch:

    ![image](https://github.com/user-attachments/assets/7020a596-74eb-4714-bb06-7c0f4ac54a22)

- ### toggle prompt colors
  ```
  case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
  esac
  ```
- ### change the chroot
   ```
   if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
       debian_chroot=$(cat /etc/debian_chroot)
   fi
   ```

