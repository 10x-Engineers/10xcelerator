class c_2364_1;
    integer i = -392;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2364_1;
    c_2364_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z01xzxx01zzzzz1zz00zz1z0z1zzx0zzxzxxzzzxzxzxxzxxzzzzxzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
