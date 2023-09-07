class c_1169_1;
    integer i = -193;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1169_1;
    c_1169_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1zz000z11z1110x01x1xxxz010xz1zzzzzzzzxzzzxxzzzzzxzxzzxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
