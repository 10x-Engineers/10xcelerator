class c_1295_1;
    integer i = -214;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1295_1;
    c_1295_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0z100zzx011x011x1zxxx00111x011xzxzxxzxxzzxzzzzzzzxxzzzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
