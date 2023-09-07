class c_2813_1;
    integer i = -467;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2813_1;
    c_2813_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0111z011000111z0xx0z0z00100zzxxxxzxxxzxzzzzzxxxxxzzxxzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram