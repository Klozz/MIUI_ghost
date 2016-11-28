.class public Lcom/android/internal/util/pa/PieHelper;
.super Ljava/lang/Object;
.source "PieHelper.java"


# static fields
.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SYSTEMUI_METADATA_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSTEM_METADATA_NAME:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v9, -0x1

    .line 73
    .local v9, "resId":I
    const/4 v1, 0x0

    .line 74
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 75
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-nez v8, :cond_0

    .line 76
    const/4 v11, 0x0

    return-object v11

    .line 81
    :cond_0
    :try_start_0
    const-string/jumbo v11, "com.android.systemui"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 87
    .local v10, "systemUiResources":Landroid/content/res/Resources;
    const-string/jumbo v11, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 89
    :try_start_1
    const-string/jumbo v11, ".*?hasExtraIcon="

    const-string/jumbo v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "extraIconPath":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 97
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 98
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 112
    .end local v6    # "extraIconPath":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    const-string/jumbo v11, "system_shortcut="

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 114
    const-string/jumbo v11, "system_shortcut="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    .line 113
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 114
    const-string/jumbo v12, "drawable"

    const-string/jumbo v13, "android"

    .line 113
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 115
    if-lez v9, :cond_8

    .line 116
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    return-object v11

    .line 82
    .end local v10    # "systemUiResources":Landroid/content/res/Resources;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 83
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "ButtonsHelper:"

    const-string/jumbo v12, "can\'t access systemui resources"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/4 v11, 0x0

    return-object v11

    .line 91
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "extraIconPath":Ljava/lang/String;
    .restart local v10    # "systemUiResources":Landroid/content/res/Resources;
    :cond_3
    :try_start_2
    new-instance v7, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 93
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 94
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 93
    invoke-direct {v2, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 107
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "extraIconPath":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 108
    .local v5, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v5    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v3

    .line 102
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "com.android.systemui:drawable/ic_sysbar_null"

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 101
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 103
    if-lez v9, :cond_2

    .line 104
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 118
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v11, "empty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 129
    :cond_5
    const-string/jumbo v11, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 130
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/android/internal/util/pa/PieHelper;->getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    .line 132
    if-lez v9, :cond_8

    .line 133
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    return-object v11

    .line 119
    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v7    # "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 121
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 123
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 124
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 123
    invoke-direct {v13, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 122
    invoke-static {v13}, Lcom/android/internal/util/pa/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 121
    invoke-direct {v11, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v11

    .line 126
    :cond_7
    const-string/jumbo v11, "ActionHelper:"

    const-string/jumbo v12, "can\'t access custom icon image"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v11, 0x0

    return-object v11

    .line 136
    .end local v7    # "f":Ljava/io/File;
    :cond_8
    return-object v1
.end method

.method public static getActionIconUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v2, -0x1

    .line 142
    .local v2, "resId":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 143
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 144
    return v2

    .line 149
    :cond_0
    :try_start_0
    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 155
    .local v3, "systemUiResources":Landroid/content/res/Resources;
    if-eqz p2, :cond_2

    const-string/jumbo v4, "system_shortcut="

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    const-string/jumbo v4, "system_shortcut="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 156
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    const-string/jumbo v5, "drawable"

    const-string/jumbo v6, "android"

    .line 156
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 162
    :cond_1
    :goto_0
    return v2

    .line 150
    .end local v3    # "systemUiResources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ButtonsHelper:"

    const-string/jumbo v5, "can\'t access systemui resources"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    return v2

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "systemUiResources":Landroid/content/res/Resources;
    :cond_2
    const-string/jumbo v4, "**"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-static {v3, p1}, Lcom/android/internal/util/pa/PieHelper;->getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private static getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "systemUiResources"    # Landroid/content/res/Resources;
    .param p1, "clickAction"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 166
    const/4 v0, -0x1

    .line 169
    .local v0, "resId":I
    const-string/jumbo v1, "##home##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_home"

    .line 170
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 172
    :cond_0
    const-string/jumbo v1, "##back##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_back"

    .line 173
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 175
    :cond_1
    const-string/jumbo v1, "##recent##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_recent"

    .line 176
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_2
    const-string/jumbo v1, "##menu##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_menu"

    .line 179
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 181
    :cond_3
    const-string/jumbo v1, "**menu_big**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_menu_big"

    .line 182
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_4
    const-string/jumbo v1, "##lastapp##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_lastapp"

    .line 185
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 187
    :cond_5
    const-string/jumbo v1, "##killtask##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 189
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_killtask"

    .line 188
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 190
    :cond_6
    const-string/jumbo v1, "##notifications##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 192
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_notifications"

    .line 191
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 193
    :cond_7
    const-string/jumbo v1, "##settings_panel##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 195
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_quicksettings"

    .line 194
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 196
    :cond_8
    const-string/jumbo v1, "##screenshot##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 198
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_screenshot"

    .line 197
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 201
    :cond_9
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_null"

    .line 200
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static getPaPieConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "entries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pa/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 48
    const-string/jumbo v2, "pa_pie_config"

    .line 49
    const/4 v3, -0x2

    .line 46
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "##back##|##home##|##recent##|**null**|**null**|**null**|empty"

    .line 53
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/pa/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static setPaPieConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/pa/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "actionConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/pa/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 60
    const-string/jumbo v0, "##back##|##home##|##recent##|**null**|**null**|**null**|empty"

    .line 64
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "pa_pie_config"

    .line 64
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    return-void

    .line 62
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/util/pa/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method
