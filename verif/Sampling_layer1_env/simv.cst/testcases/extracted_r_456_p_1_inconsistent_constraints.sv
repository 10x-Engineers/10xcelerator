class c_456_1;
    integer i = -74;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_456_1;
    c_456_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxzx0z01101xz1z10zzxx101x0xxx0zxzxxxxxxzzxzzxxxxzxzzzxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
