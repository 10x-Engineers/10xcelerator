class c_904_1;
    integer i = -149;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_904_1;
    c_904_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011zx111x11zzxx11z00zzx00xz1110xxxxzxxxxxzzzzxzzzxxzxxxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
