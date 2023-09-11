class c_2120_1;
    integer i = -352;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2120_1;
    c_2120_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x1z0xx0xz1xxz01xzxzzzx101z0z1zxxxzxxxxzzzzxzxzxzzzzxxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
