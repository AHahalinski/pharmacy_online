<style>
    .popup {
        background: rgba(102, 102, 102, 0.5);
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
        display: none;
    }

    .popup-window {
        width: 300px;
        height: 50px;
        text-align: center;
        padding: 15px;
        border: 3px solid #0000cc;
        border-radius: 10px;
        color: #0000cc;
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        margin: auto;
        background: #fff;
    }

    .popup:target {
        display: block;
    }

    .close {
        display: inline-block;
        border: 1px solid #0000cc;
        color: #0000cc;
        padding: 0 12px;
        margin: 10px;
        text-decoration: none;
        background: #f2f2f2;
        font-size: 14pt;
        cursor: pointer;
    }

    .close:hover {
        background: #e6e6ff;
    }
</style>
<

<div class="popup">
    <div class="popup-window">
        Всплывающее окошко!<br>
        <a href="#" class="close">Закрыть окно</a>
    </div>
</div>

<a href="#popup">Вызвать всплывающее окно</a>