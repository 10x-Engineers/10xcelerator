class c_2403_1;
    integer i = -399;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2403_1;
    c_2403_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzx0z1x00x1x1110z01xz011z1x0xxxxzzxxxzxxzxxxzxxxzzzxzxzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
