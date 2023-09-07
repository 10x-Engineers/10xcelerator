class c_147_1;
    integer i = -23;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_147_1;
    c_147_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101010010z0111z111x1z1zxz0zz1z1xzxxxxxzxxzzxxxzzzxxzxxzxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
