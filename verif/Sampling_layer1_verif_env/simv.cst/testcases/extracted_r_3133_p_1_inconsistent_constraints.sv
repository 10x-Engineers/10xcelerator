class c_3133_1;
    integer i = -521;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3133_1;
    c_3133_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzx1xz00x1z1zxxxx10zzzzzx0110xxxzxzxxzzzzzxzxxxxzxxxzzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram