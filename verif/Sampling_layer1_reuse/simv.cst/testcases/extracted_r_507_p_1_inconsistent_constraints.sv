class c_507_1;
    integer i = -83;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_507_1;
    c_507_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zzx0xz1xzz1z01zzzx01x11zzz110xzxxzxzzxxzzzzxzzzzxxzzzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
