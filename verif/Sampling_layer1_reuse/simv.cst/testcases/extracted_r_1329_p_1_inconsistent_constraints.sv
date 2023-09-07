class c_1329_1;
    integer i = -220;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1329_1;
    c_1329_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz1101zz0xzzxzzzx0zzz0z110010zzxxxzzzxxzxzxxzzxxxzxxxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
