<template>
  <div id='side-bar'>
    <div class='quick'>
      <h1 class='reference'> Quick Reference</h1>
    </div>
    <a href='https://drive.google.com/file/d/14QJxHbgz1fobZ8mIObZSRPZa2z3OTLZE/view' target="_blank"><button >Resume Tips</button></a>
    <a href='https://hbr.org/2014/02/how-to-write-a-cover-letter' target="_blank"><button>Cover Letter Tips</button></a>
    <a href='https://www.javatpoint.com/what-is-database' target="_blank"><button>Intro to Database</button></a>
    <a href='https://drive.google.com/file/d/1cqBMTovYMlKF1pTjU9V8J29w2jnaKmk5/view' target="_blank"><button>Interview</button></a>
    <a href='https://drive.google.com/file/d/1iu3ZW_8elgbRBueb7TZoIFsFY8Bzy_OJ/view' target="_blank"><button>Stress Tips</button></a>
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
    justify-content: space-evenly;
    margin-right: 15px;
  }

  div#side-bar button {
    position: relative;
    top: 0;
  }

  div#side-bar div.quick {
    background: transparent;
    border-radius: 15px;
  }

  div#side-bar div.quick h1.reference {
    font-size: 16px;
    padding-top: 0px;
    margin-top: 0px;
    margin-bottom: 0px;
  }
</style>