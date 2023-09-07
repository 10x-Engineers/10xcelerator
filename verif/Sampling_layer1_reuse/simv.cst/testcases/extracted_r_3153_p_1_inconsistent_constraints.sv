class c_3153_1;
    integer i = -524;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3153_1;
    c_3153_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111xxxz001zxx10zz1z01xz11z1x1z0xzxzxxzxzxzxzzxxxxzzxxxzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
