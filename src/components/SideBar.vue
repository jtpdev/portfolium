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

.sidebar {
    background-color: #c6c6c6;
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
        width: 100px;
        border-radius: 50px;
    }
}
    
</style>