.class public Lcom/evancharlton/mileage/views/FormattedCurrencyView;
.super Landroid/widget/TextView;
.source "FormattedCurrencyView.java"


# static fields
.field private static final FORMAT:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Ljava/text/DecimalFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/views/FormattedCurrencyView;->FORMAT:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 2
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 21
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/evancharlton/mileage/views/FormattedCurrencyView;->FORMAT:Ljava/text/NumberFormat;

    check-cast v1, Ljava/text/DecimalFormat;

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 23
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 29
    .local v1, "value":D
    sget-object v3, Lcom/evancharlton/mileage/views/FormattedCurrencyView;->FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v3, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "value":D
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method
