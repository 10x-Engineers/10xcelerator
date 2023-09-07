class c_54_1;
    integer i = -52;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_54_1;
    c_54_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0xz0zx1xz01z01000z01zz0zz1x11zzxzxzzxxzzxzxzxzzzzzxxzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
