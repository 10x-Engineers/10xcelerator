class c_2598_1;
    integer i = -431;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2598_1;
    c_2598_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zzzx1x110xz00100xx10z0z1xz000zzxxxxzxzzzxxzxzzzxxzzzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
