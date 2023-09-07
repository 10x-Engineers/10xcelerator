class c_1154_1;
    integer i = -191;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1154_1;
    c_1154_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxxzz1010001x0z10x1z1zx111x01zxxzxxxxxxxxxzzxxxxxzzxxzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
