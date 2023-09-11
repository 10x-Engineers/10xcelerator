class c_2950_1;
    integer i = -490;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2950_1;
    c_2950_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0xxx1x10xz0xxxzxz0zzx0xxx11xxxxxxxxxzxxzzxxxxzzxzzzxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
