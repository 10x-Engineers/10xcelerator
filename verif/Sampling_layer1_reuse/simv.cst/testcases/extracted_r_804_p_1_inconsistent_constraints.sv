class c_804_1;
    integer i = -132;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_804_1;
    c_804_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz10zx10xxx11z11xz001xx1110z00xzzzzxzxxxxzxxxzzxxzxzzxzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
