class c_854_1;
    integer i = -141;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_854_1;
    c_854_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x01xz1xxz1110101zx000z0x1z0z1xxzxzxxzxzzzxzxzxzxzxxzxzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
