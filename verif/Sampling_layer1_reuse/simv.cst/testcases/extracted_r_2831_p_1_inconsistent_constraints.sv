class c_2831_1;
    integer i = -470;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2831_1;
    c_2831_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z001xx1zz01z1zz0xzz1110xz11z110zzxxxxxzzxzxzzzzzzxzzxzxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
