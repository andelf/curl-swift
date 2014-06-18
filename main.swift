@asmname("curl_easy_setopt") func curl_easy_setopt(curl: COpaquePointer, option: CURLoption, param: CString) -> CURLcode
@asmname("curl_easy_setopt") func curl_easy_setopt(curl: COpaquePointer, option: CURLoption, param: CBool) -> CURLcode

let handle = curl_easy_init()

// this should be a const c string. curl_easy_perform() will use this.
let url: CString = "http://www.baidu.com"

curl_easy_setopt(handle, CURLOPT_URL, url)
curl_easy_setopt(handle, CURLOPT_VERBOSE, true)

let ret = curl_easy_perform(handle)
let error = curl_easy_strerror(ret)
println("error = \(error)")
