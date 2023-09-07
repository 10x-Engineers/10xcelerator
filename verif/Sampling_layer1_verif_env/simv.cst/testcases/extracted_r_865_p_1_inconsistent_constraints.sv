class c_865_1;
    integer i = -143;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_865_1;
    c_865_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0z0101xzx0x00xxx10x1x1z1xz1zzzxxzxzzxxxxzzxxxxxzxxxxzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
