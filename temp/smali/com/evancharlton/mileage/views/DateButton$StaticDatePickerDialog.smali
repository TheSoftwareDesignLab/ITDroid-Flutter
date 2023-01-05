.class Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "DateButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/views/DateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticDatePickerDialog"
.end annotation


# instance fields
.field private mCallback:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 109
    iput-object p2, p0, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;->mCallback:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 110
    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "picker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 119
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;->mCallback:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 120
    return-void
.end method

.method public setCallback(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/DatePickerDialog$OnDateSetListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;->mCallback:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 114
    return-void
.end method
