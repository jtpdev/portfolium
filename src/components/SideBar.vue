<template>
    <div class="sidebar">
        <div class="img">
            <img src="../assets/gravatar.png" alt="">
        </div>
        <ul>
            <li class="ion-home">Home</li>
        </ul>
    </div>
</template>

<script>

export default {
    name: 'SideBar',
    data: {

    }
}
    
</script>

<style lang="scss" scoped>

$side-bar-color: #919e9c;

.sidebar {
    background-color: $side-bar-color;
    color: #FFF;
    height: 100%;
}

ul {
    list-style: none;
    > li {
        text-transform: uppercase;
    }
}

.img {
    text-align: center; 
    padding: 50px 0 50px 0;
    > img {
        width: 120px;
        border-radius: 100px;
        border: 7px solid #FFF;
        box-shadow: 4px 4px darken($side-bar-color, 20%);
    }
}
    
</style>