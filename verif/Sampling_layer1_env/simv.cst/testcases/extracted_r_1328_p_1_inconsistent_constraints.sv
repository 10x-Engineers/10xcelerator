class c_1328_1;
    integer i = -220;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1328_1;
    c_1328_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1x11x1z1x00101x01xz000111zzx1zzzxxxzzzzxxzzzxzzxzxxzxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
