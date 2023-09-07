class c_1378_1;
    integer i = -228;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1378_1;
    c_1378_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x000xz1z0zxz0x1zz101z1x1zz1z11xzxxzzxxxzzzxzxxzxzxzxxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
