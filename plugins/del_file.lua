function keeper(msg, matches)
text = io.popen("cd plugins && rm -rf  ".. matches[1]..".lua"):read('*all')
  return ' تم بالفعلُِ🤚🏾 حذف الملف '
end
return {
  patterns = {
    "^حذف ملف (.*)$"
  },
  run = devams,
  moderated = true
}
----by @a_2afmi