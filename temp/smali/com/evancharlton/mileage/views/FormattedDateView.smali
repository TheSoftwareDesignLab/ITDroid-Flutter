.class public Lcom/evancharlton/mileage/views/FormattedDateView;
.super Landroid/widget/TextView;
.source "FormattedDateView.java"


# static fields
.field private static final DATE:I = 0x1

.field private static final FMT_DATE:Ljava/lang/String; = "date"

.field private static final FMT_LONG:Ljava/lang/String; = "long"

.field private static final FMT_MEDIUM:Ljava/lang/String; = "medium"

.field private static final FMT_TIME:Ljava/lang/String; = "time"

.field private static final LONG:I = 0x3

.field private static final MEDIUM:I = 0x2

.field private static final TIME:I = 0x4


# instance fields
.field private mFormat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v3, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    .line 36
    sget-object v2, Lcom/evancharlton/mileage/R$styleable;->FormattedDateView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "arr":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "format":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 39
    const-string v2, "medium"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    const/4 v2, 0x2

    iput v2, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v2, "long"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    const/4 v2, 0x3

    iput v2, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    goto :goto_0

    .line 43
    :cond_2
    const-string v2, "time"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    const/4 v2, 0x4

    iput v2, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    goto :goto_0

    .line 45
    :cond_3
    const-string v2, "date"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    iput v3, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    goto :goto_0

    .line 48
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown date format!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public setText(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 84
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/views/FormattedDateView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 56
    iget v5, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    packed-switch v5, :pswitch_data_0

    .line 68
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/FormattedDateView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 72
    .local v2, "formatter":Ljava/text/DateFormat;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 73
    .local v3, "timestamp":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v3    # "timestamp":J
    :goto_1
    return-void

    .line 58
    .end local v2    # "formatter":Ljava/text/DateFormat;
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/FormattedDateView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 59
    .restart local v2    # "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 61
    .end local v2    # "formatter":Ljava/text/DateFormat;
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/FormattedDateView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 62
    .restart local v2    # "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 64
    .end local v2    # "formatter":Ljava/text/DateFormat;
    :pswitch_2
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/FormattedDateView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 65
    .restart local v2    # "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 77
    :catch_1
    move-exception v1

    .line 78
    .local v1, "ex":Ljava/lang/Exception;
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
