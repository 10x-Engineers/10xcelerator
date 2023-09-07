class c_3316_1;
    integer i = -551;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3316_1;
    c_3316_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011zzxzxz00x0zz1zz1x1zz101z0x1xzzzzzxzxzxxxxxzxxxxzxxzxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
