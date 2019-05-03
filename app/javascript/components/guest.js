

const generateGUID = () => { // from https://stackoverflow.com/questions/13546131/it-is-fine-to-translate-guids-generated-client-side-directly-to-server-side-sto
    // Create a random number for each user
    var startStringFormat = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx';

    var guid = startStringFormat.replace(/[xy]/g, function (c) {
        var r = Math.floor(Math.random() * 16);

        var v = c === 'x' ? r : (r & 0x3 | 0x8);

        return v.toString(16);
    });
    return guid;
}


const rastreamento = () => {

    const guest = localStorage.getItem('Test-icasei_GUID')

    let GUID;
    if(guest){
      GUID = guest
    }else{
      GUID = generateGUID()
      localStorage.setItem('Test-icasei_GUID', GUID);
    }


    const timestamp =  new Date(Date.now())
    const myData = new FormData();
    myData.append('GUID', GUID);
    myData.append('timestamp', timestamp);
    myData.append('URL', window.location.href);

    console.log(myData);
    Rails.ajax({
          type: "POST",
          url: "/guests",
          data: myData,
          contentType: "application/json",
          dataType: 'script',
        success: function (form) {
          console.log("suc6");
        }
   });
}

export { rastreamento };
