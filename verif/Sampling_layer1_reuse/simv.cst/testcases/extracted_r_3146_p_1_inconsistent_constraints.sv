class c_3146_1;
    integer i = -523;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3146_1;
    c_3146_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzx11zz0z0xxx110111011z0zzxz01zzzzzxxzzzzzxxxxxxzxxxzxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
