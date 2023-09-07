class c_540_1;
    integer i = -88;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_540_1;
    c_540_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011x01x1zzxzx000x0xzxz00zx00x1xxzzxzzxzxxzzxxzzzzzzzxzxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
