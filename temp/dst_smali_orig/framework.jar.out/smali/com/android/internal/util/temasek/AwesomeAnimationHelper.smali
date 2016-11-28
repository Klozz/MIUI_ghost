.class public Lcom/android/internal/util/temasek/AwesomeAnimationHelper;
.super Ljava/lang/Object;
.source "AwesomeAnimationHelper.java"


# static fields
.field public static final ANIMATION_DEFAULT:I = 0x0

.field public static final ANIMATION_FADE:I = 0x1

.field public static final ANIMATION_GROW_SHRINK:I = 0x9

.field public static final ANIMATION_GROW_SHRINK_BOTTOM:I = 0xb

.field public static final ANIMATION_GROW_SHRINK_CENTER:I = 0xa

.field public static final ANIMATION_GROW_SHRINK_LEFT:I = 0xc

.field public static final ANIMATION_GROW_SHRINK_RIGHT:I = 0xd

.field public static final ANIMATION_SLIDE_DOWN:I = 0x7

.field public static final ANIMATION_SLIDE_LEFT:I = 0x3

.field public static final ANIMATION_SLIDE_LEFT_NO_FADE:I = 0x5

.field public static final ANIMATION_SLIDE_RIGHT:I = 0x2

.field public static final ANIMATION_SLIDE_RIGHT_NO_FADE:I = 0x4

.field public static final ANIMATION_SLIDE_UP:I = 0x6

.field public static final ANIMATION_TRANSLUCENT:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationsList()[I
    .locals 5

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "animList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "length":I
    new-array v0, v3, [I

    .local v0, "anim":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getProperName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mAnim"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, ""

    .local v1, "value":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const v2, 0x104009b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    const v2, 0x1040094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v2, 0x104008d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const v2, 0x104008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const v2, 0x1040090

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const v2, 0x104008f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    const v2, 0x1040092

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    const v2, 0x1040093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    const v2, 0x1040091

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_8
    const v2, 0x1040095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_9
    const v2, 0x1040098

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_a
    const v2, 0x1040097

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_b
    const v2, 0x1040099

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_c
    const v2, 0x104009a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_d
    const v2, 0x1040096

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getSystemAnimations(IZZ)[I
    .locals 7
    .param p0, "mAnim"    # I
    .param p1, "enterOnly"    # Z
    .param p2, "reverseExit"    # Z

    .prologue
    const v3, 0x10a0075

    const v1, 0x10a0074

    const v2, 0x10a0042

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [I

    .local v0, "anim":[I
    packed-switch p0, :pswitch_data_0

    :goto_0
    if-eqz p1, :cond_0

    aput v2, v0, v5

    :cond_0
    return-object v0

    :pswitch_0
    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    aput v1, v0, v5

    const v1, 0x10a008b

    aput v1, v0, v6

    goto :goto_0

    :cond_1
    const v1, 0x10a008c

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_2

    const v1, 0x10a0086

    :goto_2
    aput v1, v0, v5

    const v1, 0x10a007f

    aput v1, v0, v6

    goto :goto_0

    :cond_2
    const v1, 0x10a0089

    goto :goto_2

    :pswitch_2
    if-eqz p2, :cond_3

    const v1, 0x10a0089

    :goto_3
    aput v1, v0, v5

    const v1, 0x10a007b

    aput v1, v0, v6

    goto :goto_0

    :cond_3
    const v1, 0x10a0086

    goto :goto_3

    :pswitch_3
    if-eqz p2, :cond_4

    const v1, 0x10a008a

    :goto_4
    aput v1, v0, v5

    const v1, 0x10a0081

    aput v1, v0, v6

    goto :goto_0

    :cond_4
    const v1, 0x10a0083

    goto :goto_4

    :pswitch_4
    if-eqz p2, :cond_5

    const v1, 0x10a0083

    :goto_5
    aput v1, v0, v5

    const v1, 0x10a0079

    aput v1, v0, v6

    goto :goto_0

    :cond_5
    const v1, 0x10a008a

    goto :goto_5

    :pswitch_5
    if-eqz p2, :cond_6

    const v1, 0x10a0085

    :goto_6
    aput v1, v0, v5

    const v1, 0x10a007e

    aput v1, v0, v6

    goto :goto_0

    :cond_6
    const v1, 0x10a0088

    goto :goto_6

    :pswitch_6
    if-eqz p2, :cond_7

    const v1, 0x10a0088

    :goto_7
    aput v1, v0, v5

    const v1, 0x10a007a

    aput v1, v0, v6

    goto :goto_0

    :cond_7
    const v1, 0x10a0085

    goto :goto_7

    :pswitch_7
    if-eqz p2, :cond_8

    const v1, 0x10a009e

    :goto_8
    aput v1, v0, v5

    const v1, 0x10a009c

    aput v1, v0, v6

    goto/16 :goto_0

    :cond_8
    const v1, 0x10a009f

    goto :goto_8

    :pswitch_8
    if-eqz p2, :cond_9

    :goto_9
    aput v1, v0, v5

    const v1, 0x10a0027

    aput v1, v0, v6

    goto/16 :goto_0

    :cond_9
    const v1, 0x10a0076

    goto :goto_9

    :pswitch_9
    if-eqz p2, :cond_a

    move v1, v2

    :goto_a
    aput v1, v0, v5

    const v1, 0x10a0023

    aput v1, v0, v6

    goto/16 :goto_0

    :cond_a
    const v1, 0x10a0072

    goto :goto_a

    :pswitch_a
    if-eqz p2, :cond_b

    const v1, 0x10a0077

    :goto_b
    aput v1, v0, v5

    const v1, 0x10a0026

    aput v1, v0, v6

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto :goto_b

    :pswitch_b
    if-eqz p2, :cond_c

    :goto_c
    aput v3, v0, v5

    const v1, 0x10a0028

    aput v1, v0, v6

    goto/16 :goto_0

    :cond_c
    const v3, 0x10a0077

    goto :goto_c

    :pswitch_c
    if-eqz p2, :cond_d

    const v1, 0x10a0076

    :cond_d
    aput v1, v0, v5

    const v1, 0x10a0025

    aput v1, v0, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
