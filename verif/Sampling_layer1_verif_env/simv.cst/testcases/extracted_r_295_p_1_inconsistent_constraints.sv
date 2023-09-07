class c_295_1;
    integer i = -48;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_295_1;
    c_295_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z110zz0zzz00zz101x1zx1xzzz0z01xxzzzzxxxzzzzxzzxzzxxzzxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
