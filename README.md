# 洋蔥純注音修改版 與 洋蔥 Plus 輕量版

## 致謝

此專案是基於 [**Onion_Rime_Files**](https://github.com/oniondelta/Onion_Rime_Files) 之[**《注音 洋蔥純注音》**](https://github.com/oniondelta/Onion_Rime_Files/wiki/%E3%80%8E-%E6%B3%A8%E9%9F%B3-%E6%B4%8B%E8%94%A5-%E7%B4%94%E6%B3%A8%E9%9F%B3-%E7%89%88-%E3%80%8F%E6%96%B9%E6%A1%88%E8%AA%AA%E6%98%8E)和[**《注音 洋蔥 Plus 版》**](https://github.com/oniondelta/Onion_Rime_Files/wiki/%E3%80%8E-%E6%B3%A8%E9%9F%B3-%E6%B4%8B%E8%94%A5-plus-%E7%89%88-%E3%80%8F%E6%96%B9%E6%A1%88%E8%AA%AA%E6%98%8E)所進行的一些更改。**我所做的僅是從各種方案中，挑選出所需要的部分後，進行組合。**

感謝 [**oniondelta**](https://github.com/oniondelta) 與其他貢獻者的辛苦付出，才能有如此好用的電腦輸入法可以使用。

## 開發環境

* OS: Arch Linux
* Desktop Environment: GNOME 49.3
* 輸入法引擎: ibus-rime

## 中州韻輸入法引擎

[![image](./rime.jpg)](https://rime.im/)

在使用此輸入法之前，必須先安裝裝中洲韻輸入法引擎，具體安裝步驟可參考[這裡](https://rime.im/download/)。

## 各洋蔥輸入法版本比較

|               | **洋蔥純注音版**  | ***洋蔥純注音修改版**  | *洋蔥Plus輕量版  |                           **洋蔥Plus版**                            |
|:------------: |:----------------: |:---------------------: |:---------------: |:------------------------------------------------------------------: |
|  **輸入法**   |    注音、倉頡     |          注音          |    注音、倉頡    | 注音、倉頡、英漢字典、<br>拉丁、日語、韓語、<br>希臘、西里爾(俄文)  |
|   **詞庫**    |   洋蔥純注音版    |      洋蔥 Plus 版      |   洋蔥 Plus 版   |                            洋蔥 Plus 版                             |
| **反查功能**  |        :o:        |          :x:           |       :o:        |                                 :o:                                 |
|   **emoji**   |        :x:        |          :o:           |       :o:        |                                 :o:                                 |

(* 表示此專案新增的版本，皆使用官方最新版本進行修改)

## 《注音 洋蔥純注音修改版》

> 適合一切從簡，只想用注音輸入法又想要有較大中文詞庫的人。

本體是《注音 洋蔥純注音版》，但使用的是《注音 洋蔥 Plus 版》的中文詞庫（相比洋蔥純注音版[多了 80 萬以上的條目](https://github.com/oniondelta/Onion_Rime_Files/wiki/%E3%80%8E-%E6%B3%A8%E9%9F%B3-%E6%B4%8B%E8%94%A5-%E7%B4%94%E6%B3%A8%E9%9F%B3-%E7%89%88-%E3%80%8F%E6%96%B9%E6%A1%88%E8%AA%AA%E6%98%8E#%E5%89%8D%E8%A8%80)），並將洋蔥 Plus 版的 emoji 功能也一併搬運過來，且只保留注音輸入法。因為刪除了洋蔥純注音版原本的倉頡輸入，所以[反查](https://github.com/oniondelta/Onion_Rime_Files/wiki/%E3%80%94%E6%B4%8B%E8%94%A5%E6%B3%A8%E9%9F%B3%E7%B3%BB%E5%88%97%E3%80%95%EF%BC%9A%E5%8F%8D%E6%9F%A5)功能也一併刪除。

## 《注音 洋蔥 Plus 輕量版》

> 適合只想使用部分《注音 洋蔥 Plus 版》功能的人。

與《注音 洋蔥 Plus 版》相比，只保留了注音輸入法與倉頡輸入法，其他功能則皆相同。

## 方案放置路徑

* 《注音 洋蔥純注音修改版》所需檔案位於 `bopomo_onion_revised` 資料夾。
* 《注音 洋蔥 Plus 輕量版》所需檔案位於 `bopomo_onionplus_lightweight` 資料夾。

將方案資料夾內的所有檔案依照不同的作業系統放置於以下路徑後，重新「部署」即可。

```sh
%APPDATA%\Rime  ( Windows 小狼毫 )
~/Library/Rime  ( Mac OS 鼠鬚管 )
~/.config/ibus/rime  ( Linux 中州韻 )
~/.config/fcitx/rime  ( Linux )
~/.local/share/fcitx5/rime ( Linux )
```

若在 Linux 環境部署時遇錯，可於 `/tmp/rime.ibus.ERROR` 查看錯誤訊息。

## 其它事項

Linux 上的 ibus-rime 在 1.6.0-1 版本中，原本直式的候選字選單已更改為水平式。詳見[連結](https://github.com/rime/ibus-rime/commit/018ae95a27acb8f54881bba3db5526886dd11dbf)與[連結](https://github.com/rime/ibus-rime/commit/a64b41c7ac6111bd2c7a7d08e730f3fcd07fc698)。

若希望改回原本直式的佈局，請確保 `~/.config/ibus/rime/build/ibus_rime.yaml` 中 `style` 區塊的設定與下方相同。請記得更改前與更改後皆需「部署」。

```yaml
style:
  cursor_type: insert # 自 1.6.0-1 起預設為 select
  horizontal: false # 自 1.6.0-1 起預設為 true
  inline_preedit: true
  preedit_style: composition # 自 1.6.0-1 起預設為 preview
```
