<template>
  <div id='side-bar'>
    <div class='quick'>
      <h1>Quick Reference</h1>
    </div>
      <a href='https://drive.google.com/file/d/14QJxHbgz1fobZ8mIObZSRPZa2z3OTLZE/view' target="_blank"><button class='btn-5'>Resume</button></a>
      <a href='https://hbr.org/2014/02/how-to-write-a-cover-letter' target="_blank"><button class='btn-5'>Cover Letter</button></a>
      <a href='https://www.javatpoint.com/what-is-database' target="_blank"><button class='btn-5'>Database</button></a>
      <a href='https://drive.google.com/file/d/1cqBMTovYMlKF1pTjU9V8J29w2jnaKmk5/view' target="_blank"><button class='btn-5'>Interview</button></a>
      <a href='https://drive.google.com/file/d/1iu3ZW_8elgbRBueb7TZoIFsFY8Bzy_OJ/view' target="_blank"><button class='btn-5'>Stress</button></a>
  </div>
</template>

<script>
export default {
}
</script>

<style>
  div#side-bar {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    margin-right: 15px;
    background: rgba(22, 20, 21, 0.6);
    border: 5px solid black;
    border-radius: 15px;
  }

  div#side-bar h1 {
    font-size: 20px;
    margin-bottom: 30px;
    align-content: center;
    padding: 10px;
    border-radius: 10px;
    color: rgb(212, 209, 209);
  }

  div#side-bar div.quick {
    background: transparent !important; 
    background-image: linear-gradient(black,rgba(0, 0, 0, 0.479), rgba(22, 20, 21, 0)) !important;
    border-radius: 0px !important;
  }

  div#side-bar button {
    position: relative;
  }

  .btn-5 {
    width: 130px;
    height: 40px;
    line-height: 42px;
    padding: 0;
    border: none;
    background: black;
    background: linear-gradient(0deg, rgba(236, 236, 236, 1) 0%, rgba(158, 158, 158, 1) 100%);
    box-shadow: 5px 5px 1px rgba(10, 10, 10, 1);
  }
  .btn-5:hover {
    color: white !important;
    background: transparent;
    box-shadow:none;
  }
  .btn-5:before,
  .btn-5:after{
    content:'';
    position:absolute;
    top:0;
    right:0;
    height:2px;
    width:0;
    background: white;
    box-shadow:
    -1px -1px 5px 0px black,
    7px 7px 20px 0px #0003,
    4px 4px 5px 0px #0002;
    transition:400ms ease all;
  }
  .btn-5:after{
    right:inherit;
    top:inherit;
    left:0;
    bottom:0;
  }
  .btn-5:hover:before,
  .btn-5:hover:after{
    width:100%;
    transition:800ms ease all;
  }
  
  div#side-bar div.quick {
    background: lime;
    border-radius: 15px;
  }

  div#side-bar div.quick h1.reference {
    font-size: 16px;
    padding-top: 0px;
    margin-top: 0px;
    margin-bottom: 0px;
  }
</style>