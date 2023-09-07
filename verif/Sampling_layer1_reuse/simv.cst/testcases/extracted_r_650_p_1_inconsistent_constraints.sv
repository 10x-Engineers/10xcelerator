class c_650_1;
    integer i = -107;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_650_1;
    c_650_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1111x1x1zzx111z0100zzzx0x0zz1x1xxzxxxzxxzzxxxxzzxzxxzxxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
