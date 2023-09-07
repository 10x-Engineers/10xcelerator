class c_1235_1;
    integer i = -204;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1235_1;
    c_1235_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x00001z1zz0x00x001zzz1zz1xzxzzxzxxxzzxzxzzxzzxxxxzzzzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
