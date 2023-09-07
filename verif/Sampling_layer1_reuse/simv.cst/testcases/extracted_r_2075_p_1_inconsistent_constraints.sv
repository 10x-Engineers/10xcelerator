class c_2075_1;
    integer i = -344;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2075_1;
    c_2075_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xxx1001x1zxxzxzz00x01zx1x10z0xzxxxxxzxzxzzzxzxxzxzzxzxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
