package com.mycompany.sampleapp;

import javax.servlet.jsp.JspException;
import org.springframework.web.servlet.tags.form.InputTag;
import org.springframework.web.servlet.tags.form.TagWriter;

public class CustomInputTag extends InputTag {

    private static final long serialVersionUID = 1L;

    protected int writeTagContent(TagWriter tagWriter) throws JspException {
        // クラスを追加
        String cls = this.getCssClass();
        String originalName = this.getName();
        if (cls == null) {
            this.setCssClass("ajax");
        } else {
            this.setCssClass(cls + " ajax");
        }
        super.writeTagContent(tagWriter);

        // 検索ボタン
        tagWriter.startTag("input");
        tagWriter.writeAttribute("id", originalName + "_button");
        tagWriter.writeAttribute("name", originalName + "_button");
        tagWriter.writeAttribute("type", "button");
        tagWriter.writeAttribute("value", "検索");

        writeDefaultAttributes(tagWriter);
        writeValue(tagWriter);

        tagWriter.endTag();

        // 値テキスト
        tagWriter.startTag("input");
        tagWriter.writeAttribute("type", "text");
        tagWriter.writeAttribute("id", originalName + "_value");
        tagWriter.writeAttribute("name", originalName + "_value");
        tagWriter.writeAttribute("readonly", "readonly");
        tagWriter.writeAttribute("value", "");

        writeDefaultAttributes(tagWriter);
        writeValue(tagWriter);

        tagWriter.endTag();
        return SKIP_BODY;
    }

}
